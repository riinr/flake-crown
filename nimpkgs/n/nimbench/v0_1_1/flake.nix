{
  description = ''Micro benchmarking tool for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbench-v0_1_1.flake = false;
  inputs.src-nimbench-v0_1_1.owner = "ivankoster";
  inputs.src-nimbench-v0_1_1.ref   = "v0_1_1";
  inputs.src-nimbench-v0_1_1.repo  = "nimbench.git";
  inputs.src-nimbench-v0_1_1.type  = "github";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".dir   = "";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbench-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbench-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}