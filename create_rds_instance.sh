aws rds create-db-instance \
    --db-instance-identifier primary-db \
    --db-instance-class db.t2.micro \
    --engine mysql \
    --allocated-storage 20 \
    --master-username admin \
    --master-user-password mypassword \
    --multi-az \
    --backup-retention-period 7 \
    --storage-type gp2
