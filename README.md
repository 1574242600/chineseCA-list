# ChineseCA-list
中国大陆 CA 证书列表（包括顶级和仅二级 CA）  
目前大概率不全面。  

## 列表
当前总数: 2 
格式: `{SubjectKeyIdentifier} - {O} - {CN}`
```
7D:8A:A7:A0:8E:9E:8A:7A:2A:4C:85:81:7D:A0:B7:CB:92:64:04:91 - sslTrus - sslTrus (RSA) DV CA
E3:FE:2D:FD:28:D0:0B:B5:BA:B6:A2:C4:BF:06:AA:05:8C:93:FB:2F - China Financial Certification Authority - CFCA EV ROOT
```

## 补充
如果要补充，请把证书重命名为 `{SubjectKeyIdentifier}.pem` 后放入 `certs` 目录然后提交 PR。  
当然也可以提 issue。