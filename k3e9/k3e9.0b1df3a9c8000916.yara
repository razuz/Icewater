
rule k3e9_0b1df3a9c8000916
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.0b1df3a9c8000916"
     cluster="k3e9.0b1df3a9c8000916"
     cluster_size="6"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="backdoor razy injector"
     md5_hashes="['15c92b3e2fa7138d0d67f22867f9f700','814d0d456908d2623506b964264028ca','bd34711755688f0a0ff3831ad69b8b9c']"

   strings:
      $hex_string = { 47018a46028847028b45085e5fc9c3908d7431fc8d7c39fcf7c7030000007524c1e90283e20383f908720dfdf3a5fcff2495306840008bfff7d9ff248de06740 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
