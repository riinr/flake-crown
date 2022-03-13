{
  description = ''The Ultimate Raylib gaming library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimraylib_now-v0_8_0.flake = false;
  inputs.src-nimraylib_now-v0_8_0.owner = "greenfork";
  inputs.src-nimraylib_now-v0_8_0.ref   = "refs/tags/v0.8.0";
  inputs.src-nimraylib_now-v0_8_0.repo  = "nimraylib_now";
  inputs.src-nimraylib_now-v0_8_0.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimraylib_now-v0_8_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimraylib_now-v0_8_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}