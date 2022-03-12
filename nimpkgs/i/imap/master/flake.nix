{
  description = ''IMAP client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imap-master.flake = false;
  inputs.src-imap-master.owner = "~ehmry";
  inputs.src-imap-master.ref   = "refs/heads/master";
  inputs.src-imap-master.repo  = "nim_imap";
  inputs.src-imap-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}