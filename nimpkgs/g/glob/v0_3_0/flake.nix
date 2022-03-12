{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glob-v0_3_0.flake = false;
  inputs.src-glob-v0_3_0.owner = "haltcase";
  inputs.src-glob-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-glob-v0_3_0.repo  = "glob";
  inputs.src-glob-v0_3_0.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glob-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glob-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}