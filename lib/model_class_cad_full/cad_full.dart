class Cadastroempresa {
  final String data;
  final String conta;
  final String contagrupo;
  final String contamatriz;
  final String razao;
  final String bandeira;
  final String nomecomercial;
  final String tipo;
  final String cnpj;
  final String ie;
  final String endereco;
  final String cep;
  final String complemento;
  final String bairro;
  final String uf;
  final String cidade;
  final String fone;
  final String fax;
  final String emailcomercial;
  final String site;
  final String titular;
  final String representante;
  final String regiao;
  final String setor;
  final String regiaosetor;
  final String grupo;
  final String cat;
  final String tamshowroom;

  final String cargo;
  final String funcao;

  final String senhagerada;
  final String emailparaenviodeacesso;

  Cadastroempresa(
    this.data,
    this.conta,
    this.contagrupo,
    this.contamatriz,
    this.razao,
    this.bandeira,
    this.nomecomercial,
    this.tipo,
    this.cnpj,
    this.ie,
    this.endereco,
    this.cep,
    this.complemento,
    this.bairro,
    this.uf,
    this.cidade,
    this.fone,
    this.fax,
    this.emailcomercial,
    this.site,
    this.titular,
    this.representante,
    this.regiao,
    this.setor,
    this.regiaosetor,
    this.grupo,
    this.cat,
    this.tamshowroom,
    this.cargo,
    this.funcao,
    this.senhagerada,
    this.emailparaenviodeacesso,
  );

  @override
  String toString() {
    return 'Cadastroempresa{data:$data,conta:$conta,contagrupo:$contagrupo,contamatriz:$contamatriz,razao:$razao,bandeira:$bandeira,nomecomercial:$nomecomercial,tipo:$tipo,cnpj:$cnpj,ie:$ie,endereco:$endereco;cep:$cep,complemento:$complemento,bairro:$bairro,uf:$uf,cidade:$cidade,fone:$fone,fax:$fax,emailcomercial:$emailcomercial,site:$site,titular:$titular,representante:$representante,regiao:$regiao,setor:$setor,regiaosetor:$regiaosetor,grupo:$grupo,cat:$cat,tamshowroom:$tamshowroom,cargo:$cargo,funcao:$funcao,senhagerada:$senhagerada,emailparaenvioacesso:$emailparaenviodeacesso}';
  }
}
