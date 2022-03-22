{
  description = ''AWS Security Token Service API in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awsSTS-v1_0_2.flake = false;
  inputs.src-awsSTS-v1_0_2.owner = "ThomasTJdev";
  inputs.src-awsSTS-v1_0_2.ref   = "v1_0_2";
  inputs.src-awsSTS-v1_0_2.repo  = "nim_awsSTS";
  inputs.src-awsSTS-v1_0_2.type  = "github";
  
  inputs."sigv4".owner = "nim-nix-pkgs";
  inputs."sigv4".ref   = "master";
  inputs."sigv4".repo  = "sigv4";
  inputs."sigv4".dir   = "1_2_1";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awsSTS-v1_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-awsSTS-v1_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}