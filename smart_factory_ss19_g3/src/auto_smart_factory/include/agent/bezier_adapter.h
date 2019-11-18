#pragma once
#include "bezier.h"
#include <vector>

class BezierAdapter
{
public:
	BezierAdapter(const std::vector<Bezier::Point>& originControlPoints);
	~BezierAdapter()
	{
		//TODO
	};
	std::vector<Bezier::Point> getBezierPoints();
	std::vector<Bezier::Point> getNewControlPoints() const {return m_newControlPoints;}
private:
	bool insertControlPoint(const std::vector<Bezier::Point>& originPoints, std::vector<Bezier::Point>& newControlPoints);
	std::vector<Bezier::Point> createNewControlPoints(const std::vector<Bezier::Point>& oriPoints);
	std::vector<Bezier::Point> addControlPoints(const std::vector<Bezier::Point>& originPoints);
private:
	std::vector<Bezier::Point> m_originControlPoints;
	std::vector<Bezier::Point> m_newControlPoints;
};