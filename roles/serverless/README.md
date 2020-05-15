# Resources from Designing Serverless Architecture with AWS Lambda


## Serverless Framework

https://www.serverless.com/framework/docs/providers/aws/cli-reference/


### Setup for Serverless (Infra)

one IAM Role is shared by all of the Lambda functions in your service
Lambda functions have permission to create and write to CloudWatch logs
default AWS AWSLambdaVPCAccessExecutionRole will be associated in order to communicate with your VPC resources
An AWS CloudFormation template is created from your `serverless.yml`
Region is provided in serverless.yml




#### Account

An API Key, auth code and the following level of permissions

https://gist.github.com/ServerlessBot/7618156b8671840a539f405dea2704c8

## Java

https://docs.aws.amazon.com/lambda/latest/dg/lambda-java.html

======================== FURTHER READINGS ========================
Why vendor lock-in with serverless isn’t what you think it is
http://bit.ly/2tTBRBp
Running and debugging AWS Lambda functions locally with Serverless
framework and VSCode
http://bit.ly/2vzBqhC
The serverless approach to testing is different and may actually be
easier
http://bit.ly/2t5viwK
Testing in production: Yes, you can (and should)
http://red.ht/2uNqP2H
Consumer Driven Contracts: a service evolution pattern
http://bit.ly/2tkqu1G
Continuous Delivery Vs. Continuous Deployment: What's the Diff?
http://bit.ly/2fpuSKh
Deploying the Netflix API
http://bit.ly/2uqtazf
DoS yourself in production every night to prove you can take it
http://bit.ly/2tXhXnE
Principles of Chaos Engineering
http://principlesofchaos.org
Chaos Engineering by Netflix [FREE ebook]
http://oreil.ly/2tZU1Sn
Choose your own adventure: Chaos Engineering
http://bit.ly/2vo0m7v
Serverless at Yubl
http://bit.ly/2ipN2yf
Centralised logging for AWS Lambda
http://bit.ly/2f3zxQG
Tips and tricks for logging and monitoring AWS Lambda functions
http://bit.ly/2gGredx
Capture and forward correlation IDs through different Lambda event
sources
http://bit.ly/2gL0R9M
Some things you should know before using Amazon’s Elasticsearch
Service on AWS
http://bit.ly/2tB3qg2
I’m here to tell you the truth, the good, the bad and the ugly of AWS
X-Ray and Lambda
http://bit.ly/2s9yxmA
Measuring Micro-services
http://bit.ly/2t54YyU
Squeezing the milliseconds: How to make serverless platforms blazing
fast!
http://bit.ly/2oBEbw2
How long does AWS Lambda keep your idle functions around before a cold
start?
http://bit.ly/2tb7bLJ
Comparing AWS Lambda performance when using Node.js, Java, C# or
Python
http://bit.ly/2tvxU2s
How does language, memory and package size affect cold starts of AWS
Lambda?
http://bit.ly/2rtCCBz
Best Practices for Working with AWS Lambda Functions
http://amzn.to/2jzLmkb
An Analysis of Async Lambda Fail Retry Behaviour and Dead Letter
Queues
http://bit.ly/2v7F2E4
AWS Lambda — use recursive function to process SQS messages (Part 2)
http://bit.ly/2vsVTRa
Write recursive AWS Lambda functions the right way
http://bit.ly/2w6ItdI
======================== FRAMEWORKS & TOOLS ========================
Serverless
https://serverless.com/framework
Pact
https://docs.pact.io
Simian Army
https://github.com/Netflix/SimianArmy
serverless-artillery
https://github.com/Nordstrom/serverless-artillery
Zipkin
http://zipkin.io
Jaeger
http://jaeger.readthedocs.io
IOPipe
https://www.iopipe.com
======================== DEMOS ========================
Testing lambda functions
https://github.com/theburningmonk/lambda-reuse-test-cases
Centralised Logging
https://github.com/theburningmonk/lambda-logging-demo
Track metrics asynchronously via logs
https://github.com/theburningmonk/lambda-logging-metrics-demo
Tracking correlation-ids
https://github.com/theburningmonk/lambda-correlation-id-demo
X-Ray
https://github.com/theburningmonk/lambda-x-ray-demo
Recursive function to process large S3 files
https://github.com/theburningmonk/lambda-recursive-s3-demo
