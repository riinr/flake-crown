{
  description = ''std / sha1 extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sha1ext-master.flake = false;
  inputs.src-sha1ext-master.owner = "CORDEA";
  inputs.src-sha1ext-master.ref   = "refs/heads/master";
  inputs.src-sha1ext-master.repo  = "sha1ext";
  inputs.src-sha1ext-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sha1ext-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sha1ext-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}