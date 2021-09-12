select Convert(decimal(18,4),SQRT(SQUARE(MAX(lat_n)-MIN(lat_n))+SQUARE(MAX(long_w)-MIN(long_w))))
from station