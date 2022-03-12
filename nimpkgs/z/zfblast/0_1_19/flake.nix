{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfblast-0_1_19.flake = false;
  inputs.src-zfblast-0_1_19.owner = "zendbit";
  inputs.src-zfblast-0_1_19.ref   = "refs/tags/0.1.19";
  inputs.src-zfblast-0_1_19.repo  = "nim.zfblast";
  inputs.src-zfblast-0_1_19.type  = "github";
  
  inputs."uri3".dir   = "nimpkgs/u/uri3";
  inputs."uri3".owner = "riinr";
  inputs."uri3".ref   = "flake-pinning";
  inputs."uri3".repo  = "flake-nimble";
  inputs."uri3".type  = "github";
  inputs."uri3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1".dir   = "nimpkgs/s/sha1";
  inputs."sha1".owner = "riinr";
  inputs."sha1".ref   = "flake-pinning";
  inputs."sha1".repo  = "flake-nimble";
  inputs."sha1".type  = "github";
  inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfblast-0_1_19"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfblast-0_1_19";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}