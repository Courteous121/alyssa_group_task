#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui.hpp>
#include <opencv2/calib3d.hpp>
#include <cv_bridge/cv_bridge.h>
#include <iostream>

double width,height;

int main(int argc, char** argv)
{
  ros::init(argc, argv, "img_publisher");
  ros::NodeHandle nh("~");
  
  nh.param<double>("x_width",width,640);
  nh.param<double>("y_height",height,640);


  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("/camera/color/image_raw", 1);
 
  cv::VideoCapture cap;
  //cv::resize(cap,cap,cv::Size(40,40));
  cv::Mat frame;
  int deviceID=0;
  if(argc>1)
	deviceID=argv[1][0]-'0';
  int apiID=cv::CAP_ANY;
  cap.open(deviceID+apiID);
  if(!cap.isOpened()){
	std::cerr<<"ERROR! Unable to open camera"<<std::endl;
	return -1;

  }
 
  ros::Rate loop_rate(30);
  while (nh.ok()) {
	cap.read(frame);
  cv::resize(frame,frame,cv::Size(width,height));
	if(!frame.empty()){
		sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", frame).toImageMsg();
		pub.publish(msg);
	}
    	ros::spinOnce();
    	loop_rate.sleep();
  }
  return 0;
}
