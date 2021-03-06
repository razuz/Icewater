
rule n3e9_1b11ac9adcbb1912
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=n3e9.1b11ac9adcbb1912"
     cluster="n3e9.1b11ac9adcbb1912"
     cluster_size="144"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171123"
     license = "RIL-1.0 [Rick's Internet License] "
     family="getnow livesoftaction riskware"
     md5_hashes="['039b746d7ec09e13a7a365eb1d3d68a2','03f08564082feec8a66ed861af70585d','1c5b65c0b9e07a62d984a85021486bc6']"

   strings:
      $hex_string = { 0a5ffad21ba8188adcddcce3f198244d3b4ce5d61327904e1a8caac8e73575694082946b39d4a73358c29650e036b3b6fb9dee3e7df3ff3c21d1d7fcfdc4a66d }

   condition:
      
      filesize > 262144 and filesize < 1048576
      and $hex_string
}
