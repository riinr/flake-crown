{
  description = ''A nim flavor of pytorch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-torch-v0_2_1.flake = false;
  inputs.src-torch-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-torch-v0_2_1.owner = "fragcolor-xyz";
  inputs.src-torch-v0_2_1.repo  = "nimtorch";
  inputs.src-torch-v0_2_1.type  = "github";
  
  inputs."fragments".owner = "nim-nix-pkgs";
  inputs."fragments".ref   = "master";
  inputs."fragments".repo  = "fragments";
  inputs."fragments".dir   = "";
  inputs."fragments".type  = "github";
  inputs."fragments".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-torch-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}