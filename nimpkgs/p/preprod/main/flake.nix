{
  description = ''preprod'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-preprod-main.flake = false;
  inputs.src-preprod-main.owner = "j-a-s-d";
  inputs.src-preprod-main.ref   = "refs/heads/main";
  inputs.src-preprod-main.repo  = "preprod";
  inputs.src-preprod-main.type  = "github";
  
  inputs."xam".dir   = "nimpkgs/x/xam";
  inputs."xam".owner = "riinr";
  inputs."xam".ref   = "flake-pinning";
  inputs."xam".repo  = "flake-nimble";
  inputs."xam".type  = "github";
  inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-preprod-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-preprod-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}