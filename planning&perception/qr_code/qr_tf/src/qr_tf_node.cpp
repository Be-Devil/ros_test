#include "qr_tf/qr_tf.h"

inline std::string current_time()
{
    const int max_buf_size = 64;
    char buf[max_buf_size];
    std::fill(buf, buf+max_buf_size, 0);
    auto now = std::time(nullptr);
    auto r = std::strftime(buf, max_buf_size, "%F-%H", std::localtime(&now));
    if(!r)  throw std::runtime_error("time format error");
    return buf;

}

int main(int argc, char **argv)
{
    auto console_logger = std::make_shared<lynx::ConsoleLogger>();
    lynx::Log::Instance()->add_handle(console_logger);

    system("mkdir -p qr_logs");
    auto file = "qr_logs/" + current_time() + ".txt";
    auto file_logger = std::make_shared<lynx::FileLogger>(file);
    lynx::Log::Instance()->add_handle(file_logger);
    
    ros::init(argc, argv, "qr_tf");
    ros::NodeHandle nh("~");
    ImageConverter imgConverter(nh, argv[1], argv[2]);
    
    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
