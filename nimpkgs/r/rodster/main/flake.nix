{
  description = ''rodster'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rodster-main.flake = false;
  inputs.src-rodster-main.ref   = "refs/heads/main";
  inputs.src-rodster-main.owner = "j-a-s-d";
  inputs.src-rodster-main.repo  = "rodster";
  inputs.src-rodster-main.type  = "github";
  
  inputs."xam".owner = "nim-nix-pkgs";
  inputs."xam".ref   = "master";
  inputs."xam".repo  = "xam";
  inputs."xam".dir   = "1_7_0";
  inputs."xam".type  = "github";
  inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rodster-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rodster-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}