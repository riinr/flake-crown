{
  description = ''The SHIORI Message charset convert utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shiori_charset_convert-v1_0_0.flake = false;
  inputs.src-shiori_charset_convert-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-shiori_charset_convert-v1_0_0.owner = "Narazaka";
  inputs.src-shiori_charset_convert-v1_0_0.repo  = "shiori_charset_convert-nim";
  inputs.src-shiori_charset_convert-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shiori_charset_convert-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-shiori_charset_convert-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}