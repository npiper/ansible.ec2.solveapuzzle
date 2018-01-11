# DevOps domain_name

Goal - create a pipeline for TravisCI to AWS assets

Create Required buildusers, keys, access and pipeline assets.

## Artifacts created

### Storage buckets for Artifacts

Repository storage areas `snapshot`, `release` for built images - s3 buckets.

### Groups

Create a `buildusers` group.

```
Current issue:  The 'buildusers' group must be manually created as the ansible iam
command does not currently execute.  (Times out)
```
This Group will give it's members access to write and promote assets to the 2 s3 Buckets created. (Inline policies)

### roles

Policies for a build role to move to these `ec2-readrepo-role` - allows an ec2 instance to read from s3 Buckets.

### users

Creates `builduser` assigning it to the Group `buildusers`.

## References

https://medium.com/@itsdavidthai/comprehensive-aws-ec2-deployment-with-travisci-guide-7cafa9c754fc
