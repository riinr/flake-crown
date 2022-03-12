{
  description = ''Linear time regex matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-regex-v0_17_0.flake = false;
  inputs.src-regex-v0_17_0.owner = "nitely";
  inputs.src-regex-v0_17_0.ref   = "refs/tags/v0.17.0";
  inputs.src-regex-v0_17_0.repo  = "nim-regex";
  inputs.src-regex-v0_17_0.type  = "github";
  
  inputs."unicodedb".dir   = "nimpkgs/u/unicodedb";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".ref   = "flake-pinning";
  inputs."unicodedb".repo  = "flake-nimble";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus".dir   = "nimpkgs/u/unicodeplus";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".ref   = "flake-pinning";
  inputs."unicodeplus".repo  = "flake-nimble";
  inputs."unicodeplus".type  = "github";
  inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-regex-v0_17_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-regex-v0_17_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}