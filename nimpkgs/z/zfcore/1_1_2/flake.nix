{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfcore-1_1_2.flake = false;
  inputs.src-zfcore-1_1_2.owner = "zendbit";
  inputs.src-zfcore-1_1_2.ref   = "refs/tags/1.1.2";
  inputs.src-zfcore-1_1_2.repo  = "nim.zfcore";
  inputs.src-zfcore-1_1_2.type  = "github";
  
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
  
  inputs."stdext".dir   = "nimpkgs/s/stdext";
  inputs."stdext".owner = "riinr";
  inputs."stdext".ref   = "flake-pinning";
  inputs."stdext".repo  = "flake-nimble";
  inputs."stdext".type  = "github";
  inputs."stdext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-1_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfcore-1_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}