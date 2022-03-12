{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-v0_0_3.flake = false;
  inputs.src-zfplugs-v0_0_3.owner = "zendbit";
  inputs.src-zfplugs-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-zfplugs-v0_0_3.repo  = "nim.zfplugs";
  inputs.src-zfplugs-v0_0_3.type  = "github";
  
  inputs."zfcore".dir   = "nimpkgs/z/zfcore";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".ref   = "flake-pinning";
  inputs."zfcore".repo  = "flake-nimble";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}