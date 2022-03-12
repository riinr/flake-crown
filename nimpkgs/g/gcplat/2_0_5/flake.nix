{
  description = ''Google Cloud Platform (GCP) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gcplat-2_0_5.flake = false;
  inputs.src-gcplat-2_0_5.owner = "disruptek";
  inputs.src-gcplat-2_0_5.ref   = "refs/tags/2.0.5";
  inputs.src-gcplat-2_0_5.repo  = "gcplat";
  inputs.src-gcplat-2_0_5.type  = "github";
  
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref   = "master";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo  = "https://github.com/yglukhov/nim-jwt.git";
  inputs."https://github.com/yglukhov/nim-jwt.git".type  = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/rest.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/rest.git".ref   = "master";
  inputs."https://github.com/disruptek/rest.git".repo  = "https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type  = "github";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gcplat-2_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gcplat-2_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}