{
  description = ''The SHIORI Message charset convert utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shiori_charset_convert-master.flake = false;
  inputs.src-shiori_charset_convert-master.ref   = "refs/heads/master";
  inputs.src-shiori_charset_convert-master.owner = "Narazaka";
  inputs.src-shiori_charset_convert-master.repo  = "shiori_charset_convert-nim";
  inputs.src-shiori_charset_convert-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shiori_charset_convert-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shiori_charset_convert-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}