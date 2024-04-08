object UniServerModule: TUniServerModule
  AutoCoInitialize = True
  TempFolder = 'temp\'
  ExtRoot = 'C:\AppServer\ext-7.5.1\'
  UniRoot = 'C:\AppServer\uni-1.90.0.1567\'
  UniPackagesRoot = 'C:\AppServer\unipackages-7.5.1\'
  Title = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1090#1086#1085#1072#1083#1100#1085#1086#1089#1090#1080' '#1086#1090#1079#1099#1074#1086#1074' IMB'
  SuppressErrors = []
  Bindings = <>
  ExtLocale = 'ru'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  UniMobileRoot = 'C:\AppServer\unim-1.90.0.1567\'
  Height = 150
  Width = 215
end
