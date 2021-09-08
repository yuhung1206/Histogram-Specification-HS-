# Histogram-Specification(HS)
Apply histogram-specification method to achieve contrast enhancement.

  
## Instructions  
 - HS operation can be customized in the section(2) in the program file for other purpose & utilization  
 ![image](https://user-images.githubusercontent.com/78803926/132471498-30b5fc6b-30ee-4e86-a455-93bfa1d639c3.png)
  
 - In this study,
to enhance the contrast of the input picture, the parameters of histogram are self-defined as:  

![image](https://user-images.githubusercontent.com/78803926/132358896-2edc356d-14fa-4cd3-8771-e8e9e59e3d62.png)
![image](https://user-images.githubusercontent.com/78803926/132361517-4690261a-a038-40ed-9d2a-448efe7f7316.png)
  
  

## Implementation process
  1. Calculate the PDF and CDF of original data
  2. According to the desired histogram, construct the customized PDF and CDF
  3. With the two CDFs, we could build the mapping between input ![image](https://user-images.githubusercontent.com/78803926/132360354-eff12a65-9838-4501-bb6b-2c899f845758.png) and output ![image](https://user-images.githubusercontent.com/78803926/132360394-9fcc451b-0597-4e98-a0bb-eba947fc59d6.png) via ![image](https://user-images.githubusercontent.com/78803926/132360467-7a482538-de74-4055-85a9-229f79da84f2.png)
  4. Utilize the mapping function and the original data to obtain the output data
  5. Export those new pixels as an image


### Theory and Experimental Results
- original and output histograms (after HS operation)  

  From the two pictures below, we could directly find that the output histogram is parser than the original histogram. Apart from   that, we could also discover that more pixels concentrate near zero gray level in the output histogram than in the original one, which would probably make the dark area darker. Additionally, the increase of pixels also take place around 200~250 gray level, revealing that the bright area would possibly become brighter. I suppose that the effects are closely associated with the desired histogram.
  ![image](https://user-images.githubusercontent.com/78803926/132361149-bcdd02a9-0359-4bdd-9cd2-7180b2f697d4.png)
  ![image](https://user-images.githubusercontent.com/78803926/132361250-b4c5f15c-babe-4ff6-bf36-5d0b0eb540a6.png)
  
  
- Image after HS operation  
  ![image](https://user-images.githubusercontent.com/78803926/132365226-cf7f56fd-c3c6-41b3-a50f-0aa6fbac6be1.png)  
  From the desired histogram, we could discover that it has a tendency to make the bright area much brighter and the dark region darker. The distribution of intermediate color is relatively lower. As a consequence, the scheme would lead to a higher contrast in the processed picture.
  
- Table of transformation function to show the mapping from the input gray level r to the output gray level z  
- In the table, the green columns represent the corresponding gray level for each input (0~255). It is obvious that some numbers are lost in the sequence in the green columns, which reflects the result of the sparser histogram. 
  ![image](https://user-images.githubusercontent.com/78803926/132365547-68e0f63c-b9ea-4cc1-aee6-9d37017683c5.png)  
   
  To further discuss the Transformation function, we could plot the above figure.(x-axis : input, y-axis : output). Apparently, we could discover that the part in the frame with red dotted line is upper than the diagonal line, which would make the color within the range brighter than before. Adversely, the part in the blue frame would let the color in the range become darker.  
  
  ![image](https://user-images.githubusercontent.com/78803926/132365759-af0214fd-554c-4ba4-a0da-23f1c4b33446.png)
  
 **Other image processing method please refer -->** https://github.com/yuhung1206/Image-Processing
