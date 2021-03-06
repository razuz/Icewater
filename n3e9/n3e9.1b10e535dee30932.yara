
rule n3e9_1b10e535dee30932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=n3e9.1b10e535dee30932"
     cluster="n3e9.1b10e535dee30932"
     cluster_size="114"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171123"
     license = "RIL-1.0 [Rick's Internet License] "
     family="allaple virut rahack"
     md5_hashes="['016003c9eeb18f75d1cb949e4c235f8f','046094ea851ee978dc49db34ff27bcbc','3a36d1404f263d4266ed4fd2239326bb']"

   strings:
      $hex_string = { 0b56b22474584d13184fa03363c4309f5a46aec765ca54d24bd5fc6e2ca110f503aa9979b18fe183db279dd81e21d052c5a794f282fe938a9a078b9131eaf16f }

   condition:
      
      filesize > 262144 and filesize < 1048576
      and $hex_string
}
