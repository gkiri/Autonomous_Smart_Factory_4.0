
#include <agent/bezier_adapter.h>

using namespace std;

BezierAdapter::BezierAdapter(const vector<Bezier::Point>& originControlPoints)
	:m_originControlPoints(originControlPoints)
{
	m_newControlPoints = createNewControlPoints(m_originControlPoints);
}
vector<Bezier::Point> BezierAdapter::addControlPoints(const vector<Bezier::Point>& originPoints)
{
	//http://www.antigrain.com/research/bezier_interpolation/index.html#PAGE_BEZIER_INTERPOLATION
    // Assume we need to calculate the control
    // points between (x1,y1) and (x2,y2).
    // Then x0,y0 - the previous vertex,
    //      x3,y3 - the next one. 
    double smooth_value = 0.6;
    double xc1 = (originPoints[0].x + originPoints[1].x) / 2.0;
    double yc1 = (originPoints[0].y + originPoints[1].y) / 2.0;
    double xc2 = (originPoints[1].x + originPoints[2].x) / 2.0;
    double yc2 = (originPoints[1].y + originPoints[2].y) / 2.0;
    double xc3 = (originPoints[2].x + originPoints[3].x) / 2.0;
    double yc3 = (originPoints[2].y + originPoints[3].y) / 2.0; 
    double len1 = sqrt((originPoints[1].x-originPoints[0].x) * (originPoints[1].x-originPoints[0].x) + (originPoints[1].y-originPoints[0].y) * (originPoints[1].y-originPoints[0].y));
    double len2 = sqrt((originPoints[2].x-originPoints[1].x) * (originPoints[2].x-originPoints[1].x) + (originPoints[2].y-originPoints[1].y) * (originPoints[2].y-originPoints[1].y));
    double len3 = sqrt((originPoints[3].y-originPoints[2].x) * (originPoints[3].y-originPoints[2].x) + (originPoints[3].y-originPoints[2].y) * (originPoints[3].y-originPoints[2].y)); 
    double k1 = len1 / (len1 + len2);
    double k2 = len2 / (len2 + len3); 
    double xm1 = xc1 + (xc2 - xc1) * k1;
    double ym1 = yc1 + (yc2 - yc1) * k1; 
    double xm2 = xc2 + (xc3 - xc2) * k2;
    double ym2 = yc2 + (yc3 - yc2) * k2; 
    // Resulting control points. Here smooth_value is mentioned
    // above coefficient K whose value should be in range [0...1].
    double ctrl1_x = xm1 + (xc2 - xm1) * smooth_value + originPoints[1].x - xm1;
    double ctrl1_y = ym1 + (yc2 - ym1) * smooth_value + originPoints[1].y - ym1; 
    double ctrl2_x = xm2 + (xc2 - xm2) * smooth_value + originPoints[2].x - xm2;
    double ctrl2_y = ym2 + (yc2 - ym2) * smooth_value + originPoints[2].y - ym2; 
    vector<Bezier::Point> controlPoint;
    controlPoint.push_back(Bezier::Point(ctrl1_x,ctrl1_y));
    controlPoint.push_back(Bezier::Point(ctrl2_x,ctrl2_y));
    return controlPoint;
}

vector<Bezier::Point> BezierAdapter::createNewControlPoints(const vector<Bezier::Point>& oriPoints)
{
    vector<Bezier::Point> newControlPoints;
    //double atan2(double y, double x);
    vector<Bezier::Point> v = oriPoints;

    if(v.size()<2)
        return newControlPoints;

    double theta0 = atan2((*(v.begin() + 1)).y - v.front().x, (*(v.begin() + 1)).x - v.front().x);
    double theta1 = atan2(v.back().y - (*(v.end() - 2)).y, v.back().x - (*(v.end() - 2)).x);

    v.insert(v.begin(), Bezier::Point(v.front().x - cos(theta0), v.front().y - sin(theta0)));
    v.insert(v.end(),   Bezier::Point(v.back().x  - cos(theta1), v.back().y  - sin(theta1)));

    newControlPoints.push_back(v.at(1));
    for(auto it0 = v.begin(), it1 = v.begin() + 3; it1 != v.end(); ++it0, ++it1)
    {
        vector<Bezier::Point> myvector(4);
        copy(it0, it1+1, myvector.begin());
        insertControlPoint(myvector,newControlPoints);
    }
    // cout<<"thz  "<<newControlPoints.size()<<endl;
    return newControlPoints;
}

bool BezierAdapter::insertControlPoint(const vector<Bezier::Point>& originPoints, vector<Bezier::Point>& newControlPoints)
{
    if(originPoints.size() != 4)
        return false;
    vector<Bezier::Point> v = addControlPoints(originPoints);
    newControlPoints.insert(newControlPoints.end(), v.begin(), v.end());
    newControlPoints.insert(newControlPoints.end(), originPoints.at(2));
    return true;
}

vector<Bezier::Point> BezierAdapter::getBezierPoints()
{
	vector<Bezier::Point> result;
    if(m_originControlPoints.size()<2)
        return result;
    int n = m_originControlPoints.size()-1;
    if((3*n + 1) != m_newControlPoints.size())
    	return result;
    Bezier::Bezier<3> cubicBezier[n];
    auto it = m_newControlPoints.begin();
    for(int i=0; i<n; ++i)
    {
        vector<Bezier::Point> myvector(4);
        copy(it, it+4, myvector.begin());
        it += 3;
        cubicBezier[i] = Bezier::Bezier<3>(myvector);
    }

    for(int i=0; i<n; ++i)
    {
        for(float j=0.0; j<1.0; j+=0.01)
        {
            Bezier::Point p = cubicBezier[i].valueAt(j);
            result.push_back(p);
        }
    }
    return result;
}