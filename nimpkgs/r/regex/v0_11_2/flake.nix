{
  description = ''Linear time regex matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-regex-v0_11_2.flake = false;
  inputs.src-regex-v0_11_2.owner = "nitely";
  inputs.src-regex-v0_11_2.ref   = "refs/tags/v0.11.2";
  inputs.src-regex-v0_11_2.repo  = "nim-regex";
  inputs.src-regex-v0_11_2.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-regex-v0_11_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-regex-v0_11_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}