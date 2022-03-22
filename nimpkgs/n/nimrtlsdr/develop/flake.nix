{
  description = ''A Nim wrapper for librtlsdr'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimrtlsdr-develop.flake = false;
  inputs.src-nimrtlsdr-develop.ref   = "refs/heads/develop";
  inputs.src-nimrtlsdr-develop.owner = "jpoirier";
  inputs.src-nimrtlsdr-develop.repo  = "nimrtlsdr";
  inputs.src-nimrtlsdr-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimrtlsdr-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimrtlsdr-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}