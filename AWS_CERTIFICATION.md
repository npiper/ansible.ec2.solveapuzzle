## Storage Questions

Ways differ from block / object storage?

4 Data/meta-Data
5 Stored in buckets

Inappropriate use cases
2 - FS mount
4 - primary db Storage

Key characteristics
1 all objects url
2 unlimited amounts data
3 s3 uses rest API

Restrict access
2. Pre-signed url
3. S3 ACL
5. S3 bucket policy

Accidental deletion
1 MFA Delete
3 Versioning

Storing to reduce cost
3. S3 Infrequent access after 30 days

How is data stored in S3 for high durability?
2. Replicated within a region

URL https://bucket1.abc.com.s3.amazonaws.com/folderx/myfile.doc

3. The object 'folderx/myfile.doc' is stored in bucket bucket1.abc.com

https://{bucket-name}.s3.amazonaws.com/{object_path}

Record of who accessed, from where?
3. Server access logs on the bucket1


Why cross region replication?

2. Lower latency
3. Compliance reasons - Data

11. Encrypted before being sent?

3. Client side encryption


Web app from s3 - performance, scalability of S3?

2. hash prefix to key names

What needed before cross-region?

Versioning
IAM policy to replicate objects

100 TB of financials?
2. S3 with glacier after 1 year

s3 Bucket policies? 3 criteria

IP Address range (CIDR)
prefix
AWS account

Eventual consistency - stale Data
GET/LIST after Delete
GET after overwrite PUT

TO host static website in S3?
Configure for static hosting, index error
bucket same name as website
objects world readable


Valuable media files?
Pre-signed URL's  (or ASW IAM?)

Glacier used for?
Infrequently accessed
Available 3-5 hours

Glacier statements?
Stores data in archives contained in vaults
Archives 3-5 hours to restore
Vaults  can be locked
