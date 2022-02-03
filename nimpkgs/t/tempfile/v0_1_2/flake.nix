{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-v0_1_2.flake = false;
  inputs.src-tempfile-v0_1_2.type = "github";
  inputs.src-tempfile-v0_1_2.owner = "OpenSystemsLab";
  inputs.src-tempfile-v0_1_2.repo = "tempfile.nim";
  inputs.src-tempfile-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-tempfile-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}