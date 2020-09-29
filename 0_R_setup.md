From [RStudio Documentation](https://docs.rstudio.com/resources/install-r/)
**Enable the Extra Packages for Enterprise Linux (EPEL) repository**   
`sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm`    

**If running RHEL 7 in a public cloud, such as Amazon EC2, enable the Optional repository from Red Hat Update Infrastructure (RHUI) instead**    
`sudo yum install yum-utils`      
`sudo yum-config-manager --enable "rhel-*-optional-rpms"`  

**Specify the R-version in the terminal**   
`export R_VERSION=4.0.2`

**Download and install R**   
`curl -O https://cdn.rstudio.com/r/centos-7/pkgs/R-${R_VERSION}-1-1.x86_64.rpm`   
`sudo yum install R-${R_VERSION}-1-1.x86_64.rpm`   
 
**Create a symlink to R**   
`sudo ln -s /opt/R/${R_VERSION}/bin/R /usr/local/bin/R`   
`sudo ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/local/bin/Rscript`   

**Check R-installation**   
`R`   

**Installing R-packages**  
This could a little painful experience in CENTOS7. Let's start `sf`. I am following the instrucations from [r-spatial/sf](https://github.com/r-spatial/sf/wiki/Installation-Guide) and [stackexchange](https://stackoverflow.com/questions/53597551/how-install-sf-rs-package-or-gdal-at-centos-6-8) 

`wget http://download.osgeo.org/gdal/3.1.3/gdal-3.1.3.tar.gz`    
`tar -zxvf gdal-3.1.3.tar.gz`     
`cd gdal-3.1.3`          
`./configure`       
`make -j4`
`make install` 
