# Two-view-epipolar-lines
#Project of the computer vision course


Problem Statement:
• Get two views (images) of an object or a scene of your choice
• Manually choose 8 corresponding points from the two views.
• Using the normalized 8 point algorithm discussed in class, estimate the fundamental matrix F that establishes the epipolar geometry of the two views.
• Assuming that the essential matrix E is same as the fundamental matrix F, draw epipolar lines of these 8 corresponding points in both views (or images). For example, to draw epipolar lines in the first view or image, use the 8 points chosen in the second view or image and the estimated fundamental matrix F; and vice versa to draw epipolar lines on the second image / view.
• Assuming E = F, estimate the translation vector tau and the rotation matrix omega. These estimates will tell the relative orientation of the two views of the scene based on the two images that you captured.
