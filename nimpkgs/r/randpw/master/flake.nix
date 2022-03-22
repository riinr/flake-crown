{
  description = ''Random password and passphrase generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-randpw-master.flake = false;
  inputs.src-randpw-master.ref   = "refs/heads/master";
  inputs.src-randpw-master.owner = "pdrb";
  inputs.src-randpw-master.repo  = "nim-randpw";
  inputs.src-randpw-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-randpw-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-randpw-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}