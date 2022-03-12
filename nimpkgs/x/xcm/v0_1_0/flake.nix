{
  description = ''Color management utility for X'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xcm-v0_1_0.flake = false;
  inputs.src-xcm-v0_1_0.owner = "SolitudeSF";
  inputs.src-xcm-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-xcm-v0_1_0.repo  = "xcm";
  inputs.src-xcm-v0_1_0.type  = "github";
  
  inputs."https://github.com/solitudesf/x11".owner = "nim-nix-pkgs";
  inputs."https://github.com/solitudesf/x11".ref   = "master";
  inputs."https://github.com/solitudesf/x11".repo  = "https://github.com/solitudesf/x11";
  inputs."https://github.com/solitudesf/x11".type  = "github";
  inputs."https://github.com/solitudesf/x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/solitudesf/x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xcm-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xcm-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}