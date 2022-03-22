{
  description = ''Fully type safe, compile time only units library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unchained-master.flake = false;
  inputs.src-unchained-master.ref   = "refs/heads/master";
  inputs.src-unchained-master.owner = "SciNim";
  inputs.src-unchained-master.repo  = "unchained";
  inputs.src-unchained-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unchained-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unchained-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}