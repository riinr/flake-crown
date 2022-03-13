{
  description = ''micro and elegant web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scorper-v1_0_16.flake = false;
  inputs.src-scorper-v1_0_16.owner = "bung87";
  inputs.src-scorper-v1_0_16.ref   = "refs/tags/v1.0.16";
  inputs.src-scorper-v1_0_16.repo  = "scorper";
  inputs.src-scorper-v1_0_16.type  = "github";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/nortero-code/rx-nim.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/nortero-code/rx-nim.git".ref   = "master";
  inputs."https://github.com/nortero-code/rx-nim.git".repo  = "https://github.com/nortero-code/rx-nim.git";
  inputs."https://github.com/nortero-code/rx-nim.git".type  = "github";
  inputs."https://github.com/nortero-code/rx-nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nortero-code/rx-nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."result".owner = "nim-nix-pkgs";
  inputs."result".ref   = "master";
  inputs."result".repo  = "result";
  inputs."result".type  = "github";
  inputs."result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest".owner = "nim-nix-pkgs";
  inputs."asynctest".ref   = "master";
  inputs."asynctest".repo  = "asynctest";
  inputs."asynctest".type  = "github";
  inputs."asynctest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scorper-v1_0_16"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scorper-v1_0_16";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}