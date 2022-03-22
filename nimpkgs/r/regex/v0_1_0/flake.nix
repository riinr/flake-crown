{
  description = ''Linear time regex matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-regex-v0_1_0.flake = false;
  inputs.src-regex-v0_1_0.owner = "nitely";
  inputs.src-regex-v0_1_0.ref   = "v0_1_0";
  inputs.src-regex-v0_1_0.repo  = "nim-regex";
  inputs.src-regex-v0_1_0.type  = "github";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".dir   = "v0_2_5";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus".owner = "nim-nix-pkgs";
  inputs."unicodeplus".ref   = "master";
  inputs."unicodeplus".repo  = "unicodeplus";
  inputs."unicodeplus".dir   = "v0_2_0";
  inputs."unicodeplus".type  = "github";
  inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-regex-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-regex-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}