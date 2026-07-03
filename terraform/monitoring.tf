resource "aws_cloudwatch_dashboard" "project_dashboard" {
  dashboard_name = "${var.project_name}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title = "EC2 CPU Utilization"

          metrics = [
            [
              "AWS/EC2",
              "CPUUtilization",
              "InstanceId",
              aws_instance.web.id
            ]
          ]

          period = 300
          stat   = "Average"
          region = var.aws_region
        }
      }
    ]
  })
}