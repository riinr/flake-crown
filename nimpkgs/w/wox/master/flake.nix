{
  description = ''Helper library for writing Wox plugins in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wox-master.flake = false;
  inputs.src-wox-master.owner = "roose";
  inputs.src-wox-master.ref   = "refs/heads/master";
  inputs.src-wox-master.repo  = "nim-wox";
  inputs.src-wox-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wox-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wox-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}