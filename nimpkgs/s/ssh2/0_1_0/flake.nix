{
  description = ''SSH, SCP and SFTP client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ssh2-0_1_0.flake = false;
  inputs.src-ssh2-0_1_0.owner = "ba0f3";
  inputs.src-ssh2-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-ssh2-0_1_0.repo  = "ssh2.nim";
  inputs.src-ssh2-0_1_0.type  = "github";
  
  inputs."libssh2".owner = "nim-nix-pkgs";
  inputs."libssh2".ref   = "master";
  inputs."libssh2".repo  = "libssh2";
  inputs."libssh2".type  = "github";
  inputs."libssh2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libssh2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ssh2-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ssh2-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}