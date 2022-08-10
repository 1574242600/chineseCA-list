# ChineseCA-list
中国大陆 CA 证书列表（包括顶级和仅二级 CA）  
目前大概率不全面。  

## 列表
当前总数: 4  
格式: `{SubjectKeyIdentifier} - {O} - {CN}`
```
37:64:23:A6:E3:D6:39:FA:CD:A6:C2:5C:8C:F0:4F:57:F2:DC:C3:F0 - "TrustAsia Technologies - TrustAsia ECC EV TLS CA G2
7D:8A:A7:A0:8E:9E:8A:7A:2A:4C:85:81:7D:A0:B7:CB:92:64:04:91 - sslTrus - sslTrus (RSA) DV CA
81:3B:50:7D:E5:8C:1D:12:FA:3D:17:EF:F3:61:C7:B3:1A:E3:12:15 - sslTrus (\E4\B8\8A\E6\B5\B7\E9\94\90\E6\88\90\E4\BF\A1\E6\81\AF\E7\A7\91\E6\8A\80\E6\9C\89\E9\99\90\E5\85\AC\E5\8F\B8) - sslTrus (RSA) EV CA
E3:FE:2D:FD:28:D0:0B:B5:BA:B6:A2:C4:BF:06:AA:05:8C:93:FB:2F - China Financial Certification Authority - CFCA EV ROOT
```

## 补充
欢迎补充，请把证书重命名为 `{SubjectKeyIdentifier}.pem` 后放入 `certs` 目录然后提交 PR。  
当然也可以提 issue。