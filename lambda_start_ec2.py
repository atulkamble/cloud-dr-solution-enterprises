import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    
    # Start recovery EC2 instance
    response = ec2.start_instances(InstanceIds=['i-0abcd1234efgh5678'])
    print(f"Recovery Instance started: {response}")

    return {
        'statusCode': 200,
        'body': 'Disaster recovery instance initiated'
    }
