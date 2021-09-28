# Two-view-epipolar-lines
#This implementation was done for one of the homeworks in Computer Vision course


Problem Statement:
  1. Get two views (images) of an object or a scene of your choice
  2. Manually choose 8 corresponding points from the two views.
  3. Using the normalized 8 point algorithm discussed in class, estimate the fundamental matrix F that establishes the epipolar geometry of the two views.
  4. Assuming that the essential matrix E is same as the fundamental matrix F, draw epipolar lines of these 8 corresponding points in both views (or images). For example, to draw epipolar lines in the first view or image, use the 8 points chosen in the second view or image and the estimated fundamental matrix F; and vice versa to draw epipolar lines on the second image / view.
  5.Assuming E = F, estimate the translation vector tau and the rotation matrix omega. These estimates will tell the relative orientation of the two views of the scene based on the two images that you captured.
  
  How to Run?
    - Run the MainCode.m
  
  Documentation? 
    -Look at the report.PDF
