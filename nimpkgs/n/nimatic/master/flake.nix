{
  description = ''A static site generator written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimatic-master.flake = false;
  inputs.src-nimatic-master.owner = "DangerOnTheRanger";
  inputs.src-nimatic-master.ref   = "refs/heads/master";
  inputs.src-nimatic-master.repo  = "nimatic";
  inputs.src-nimatic-master.type  = "github";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimatic-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimatic-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}