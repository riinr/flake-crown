{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pine-v0_2_0.flake = false;
  inputs.src-pine-v0_2_0.owner = "Willyboar";
  inputs.src-pine-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-pine-v0_2_0.repo  = "pine";
  inputs.src-pine-v0_2_0.type  = "github";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow".owner = "nim-nix-pkgs";
  inputs."rainbow".ref   = "master";
  inputs."rainbow".repo  = "rainbow";
  inputs."rainbow".type  = "github";
  inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pine-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pine-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}