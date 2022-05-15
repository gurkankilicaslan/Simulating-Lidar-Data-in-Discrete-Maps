# Simulating-Lidar-Data-in-Discrete-Maps

This is a simulation of Lidar Sensor of a robot


The discrete map is created using Data.mat. Then, Robot position and the map are taken in, and outputs 
the lidar data expected as if there is lidar on the robot. The maximum range that the lidar can see is 10 cells. 
Please note that the lidar won’t be able to see anything beyond an obstacle, if there is an obstacle at a 
distance less than this maximum range.

You will see a 100x100 map with black cells are the obstacles while the white ones are the free spaces.
Blue cells are actually the spaces Lidar sees. 

In Data.mat:
map_x gives x coordinates of the obstacles
map_y gives y coordinates of the obstacles
index gives what coordinate belongs to which obstacle

![image](https://user-images.githubusercontent.com/57681394/168485274-7853c3dd-01f8-4a3f-b33b-0ee3e9f97ea8.png)
