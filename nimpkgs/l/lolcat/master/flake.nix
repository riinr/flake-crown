{
  description = ''lolcat implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lolcat-master.flake = false;
  inputs.src-lolcat-master.owner = "OHermesJunior";
  inputs.src-lolcat-master.ref   = "refs/heads/master";
  inputs.src-lolcat-master.repo  = "lolcat.nim";
  inputs.src-lolcat-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lolcat-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lolcat-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}