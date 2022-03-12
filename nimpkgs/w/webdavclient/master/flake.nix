{
  description = ''WebDAV Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webdavclient-master.flake = false;
  inputs.src-webdavclient-master.owner = "beshrkayali";
  inputs.src-webdavclient-master.ref   = "refs/heads/master";
  inputs.src-webdavclient-master.repo  = "webdavclient";
  inputs.src-webdavclient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webdavclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webdavclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}