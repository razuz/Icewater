
rule k2321_091adcc9cc000932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2321.091adcc9cc000932"
     cluster="k2321.091adcc9cc000932"
     cluster_size="17"
     filetype = "application/gzip"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="rincux ddos stormattack"
     md5_hashes="['0012aee5f1f332f7a5ffa2a7d4bbb7e5','148320d32b3fc3ca2b8c0aa2ff041da5','f79f523b3de712a2e6ed7343bf4a90dd']"

   strings:
      $hex_string = { 1fbf4b769db61ce83cdb099817e09c37926939dcd2d73202a4c0915957e9d936ca5a8599be10661afd5af4d584611b0f376ce3a1acd45225f2a25d0305c29e19 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
