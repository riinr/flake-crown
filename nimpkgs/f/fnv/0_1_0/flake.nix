{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fnv-0_1_0.flake = false;
  inputs.src-fnv-0_1_0.owner = "ryukoposting";
  inputs.src-fnv-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-fnv-0_1_0.repo  = "nim-fnv";
  inputs.src-fnv-0_1_0.type  = "gitlab";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fnv-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fnv-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}