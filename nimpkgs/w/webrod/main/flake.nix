{
  description = ''webrod'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webrod-main.flake = false;
  inputs.src-webrod-main.owner = "j-a-s-d";
  inputs.src-webrod-main.ref   = "refs/heads/main";
  inputs.src-webrod-main.repo  = "webrod";
  inputs.src-webrod-main.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webrod-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webrod-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}