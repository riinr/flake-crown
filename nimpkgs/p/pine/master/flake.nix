{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pine-master.flake = false;
  inputs.src-pine-master.ref   = "refs/heads/master";
  inputs.src-pine-master.owner = "Willyboar";
  inputs.src-pine-master.repo  = "pine";
  inputs.src-pine-master.type  = "github";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".dir   = "v0_8_5";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow".owner = "nim-nix-pkgs";
  inputs."rainbow".ref   = "master";
  inputs."rainbow".repo  = "rainbow";
  inputs."rainbow".dir   = "v0_2_3";
  inputs."rainbow".type  = "github";
  inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pine-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pine-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}