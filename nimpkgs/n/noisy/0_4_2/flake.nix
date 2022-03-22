{
  description = ''Nim implementation of various noise types.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noisy-0_4_2.flake = false;
  inputs.src-noisy-0_4_2.owner = "guzba";
  inputs.src-noisy-0_4_2.ref   = "0_4_2";
  inputs.src-noisy-0_4_2.repo  = "noisy";
  inputs.src-noisy-0_4_2.type  = "github";
  
  inputs."nimsimd".owner = "nim-nix-pkgs";
  inputs."nimsimd".ref   = "master";
  inputs."nimsimd".repo  = "nimsimd";
  inputs."nimsimd".dir   = "1_0_0";
  inputs."nimsimd".type  = "github";
  inputs."nimsimd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noisy-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}