# Create an Auto Scaling group using a launch template (console)

1. Open the Amazon EC2 Auto Scaling console at https://console.aws.amazon.com/ec2autoscaling/.

2. On the navigation bar at the top of the screen, choose the same AWS Region that you used when you created the launch template.

3. Choose **Create an Auto Scaling group.**

4. On the **Choose launch template or configuration** page, do the following:

a. For **Auto Scaling group name,** enter a name for your Auto Scaling group.

b. For **Launch Template**, choose an existing launch template.

c. For **Launch template version**, choose whether the Auto Scaling group uses the default, the latest, or a specific version of the launch template when scaling out.

d. Verify that your launch template supports all of the options that you are planning to use, and then choose **Next**.

5. On the **Configure settings** page, for **Purchase options and instance types,** choose **Adhere to the launch template** to use the EC2 instance type and purchase option that are specified in the launch template.

6. Under **Network,** for **VPC,** choose the VPC for the security groups that you specified in your launch template.

7. For **Subnet,** choose one or more subnets in the specified VPC. Use subnets in multiple Availability Zones for high availability. For more information about high availability with Amazon EC2 Auto Scaling, see Distributing Instances Across Availability Zones.

8. Choose **Next.**

Or, you can accept the rest of the defaults, and choose **Skip to review.**

9. (Optional) On the **Configure advanced options** page, configure the following options, and then choose **Next:**

a. To register your Amazon EC2 instances with a load balancer, choose an existing load balancer or create a new one. For more information, see Elastic Load Balancing and Amazon EC2 Auto Scaling. To create a new load balancer, follow the procedure in Create and attach a new Application Load Balancer or Network Load Balancer.

b. To enable your Elastic Load Balancing (ELB) health checks, for **Health checks,** choose **ELB** under **Health check type.** These health checks are optional when you enable load balancing.

c. Under **Health check grace period,** enter the amount of time until Amazon EC2 Auto Scaling checks the health of instances after they are put into service. The intention of this setting is to prevent Amazon EC2 Auto Scaling from marking instances as unhealthy and terminating them before they have time to come up. The default is 300 seconds.

10. (Optional) On the **Configure group size and scaling policies** page, configure the following options, and then choose **Next:**

a. For **Desired capacity,** enter the initial number of instances to launch. When you change this number to a value outside of the minimum or maximum capacity limits, you must update the values of **Minimum capacity** or **Maximum capacity.** For more information, see Setting capacity limits for your Auto Scaling group.

b. To automatically scale the size of the Auto Scaling group, choose **Target tracking scaling policy** and follow the directions. For more information, see Target Tracking Scaling Policies.

c. Under **Instance scale-in protection,** choose whether to enable instance scale-in protection. For more information, see Instance scale-in protection.

11. (Optional) To receive notifications, for **Add notification,** configure the notification, and then choose **Next.** For more information, see Getting Amazon SNS notifications when your Auto Scaling group scales.

12. (Optional) To add tags, choose **Add tag,** provide a tag key and value for each tag, and then choose **Next.** For more information, see Tagging Auto Scaling groups and instances.

13. On the **Review** page, choose **Create Auto Scaling group.**

**To create an Auto Scaling group using the command line**

You can use one of the following commands:

- **create-auto-scaling-group** (AWS CLI)

- **New-ASAutoScalingGroup** (AWS Tools for Windows PowerShell)

# Creating an Auto Scaling group using the Amazon EC2 launch wizard

1. Open the Amazon EC2 console at https://console.aws.amazon.com/ec2/.

2. From the dashboard, choose **Launch instances.**

3. Choose an AMI, then choose an instance type on the next page, and then choose **Next: Configure Instance Details.**

4. In **Step 3: Configure Instance Details,** choose **Launch into Auto Scaling Group** next to **Number of instances.**

5. On the confirmation page, choose **Continue.**

6. On the **Create launch template** page, enter a name and description for the new launch template, and review the details of the template. If everything is satisfactory, choose **Create launch template.** Otherwise, update the settings of the launch template. For more information, see Creating your launch template (console).

7. On the confirmation page, choose **Create Auto Scaling group.**

8. On the **Choose launch template or configuration** page, the launch template that you created is already selected for you. Enter a name for the group, and then choose **Next.**

9. On the **Configure settings** page, for **Purchase options and instance types,** choose **Adhere to the launch template** to use the EC2 instance type and purchase option that are specified in the launch template.

10. Under **Network,** specify a VPC and one or more subnets.

11. Choose **Next** twice.

12. (Optional) On the **Configure group size and scaling policies** page, configure the following options, and then choose **Next:**

a. For **Desired capacity,** enter the initial number of instances to launch. When you change this number to a value outside of the minimum or maximum capacity limits, you must update the values of **Minimum capacity** or **Maximum capacity.** For more information, see Setting capacity limits for your Auto Scaling group.

b. To automatically scale the size of the Auto Scaling group, choose **Target tracking scaling policy** and follow the directions. For more information, see Target Tracking Scaling Policies.

13. You can optionally add notifications or tags. Or, you can choose **Skip to review.**

14. On the **Review** page, choose **Create Auto Scaling group.**
