{
  description = ''The Ultimate Raylib gaming library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimraylib_now-v0_13_2.flake = false;
  inputs.src-nimraylib_now-v0_13_2.owner = "greenfork";
  inputs.src-nimraylib_now-v0_13_2.ref   = "refs/tags/v0.13.2";
  inputs.src-nimraylib_now-v0_13_2.repo  = "nimraylib_now";
  inputs.src-nimraylib_now-v0_13_2.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimraylib_now-v0_13_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimraylib_now-v0_13_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}