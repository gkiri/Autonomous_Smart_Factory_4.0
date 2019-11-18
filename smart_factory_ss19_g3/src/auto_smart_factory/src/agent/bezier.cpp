#include <agent/bezier.h>

namespace Bezier
{
    namespace Math
    {
        double faculty(size_t n)
        {
            double d = 1.0;
            if (n == 0 || n == 1)
                return d;
            for (size_t i = 2; i <= n; i++)
                d *= (double) i;
            return d;
        }

        // Note: Using faculty function seems to be way faster than the recursive one
        // given at https://en.wikipedia.org/wiki/Binomial_coefficient
        double binomial(size_t n, size_t k)
        {
            assert(k <= n);
            return faculty(n) / (faculty(k) * faculty(n - k));
        }

        bool isWithinZeroAndOne(float x)
        {
            return x >= -BEZIER_FUZZY_EPSILON && x <= (1.0 + BEZIER_FUZZY_EPSILON);
        }
    }
}