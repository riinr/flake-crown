{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfcore-V1_0_11.flake = false;
  inputs.src-zfcore-V1_0_11.owner = "zendbit";
  inputs.src-zfcore-V1_0_11.ref   = "refs/tags/V1.0.11";
  inputs.src-zfcore-V1_0_11.repo  = "nim.zfcore";
  inputs.src-zfcore-V1_0_11.type  = "github";
  
  inputs."zfblast".dir   = "nimpkgs/z/zfblast";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".ref   = "flake-pinning";
  inputs."zfblast".repo  = "flake-nimble";
  inputs."zfblast".type  = "github";
  inputs."zfblast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3".dir   = "nimpkgs/u/uri3";
  inputs."uri3".owner = "riinr";
  inputs."uri3".ref   = "flake-pinning";
  inputs."uri3".repo  = "flake-nimble";
  inputs."uri3".type  = "github";
  inputs."uri3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-V1_0_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfcore-V1_0_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}