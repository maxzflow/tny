window.alert = function(message) {
    // Check if toast already exists, remove it
    const existing = document.querySelector('.neo-toast');
    if (existing) existing.remove();

    const toast = document.createElement('div');
    toast.className = 'neo-toast';
    
    // Determine type
    let icon = '<i class="bi bi-info-circle-fill"></i>';
    if (message.includes('เรียบร้อย') || message.includes('Success')) {
        toast.classList.add('success');
        icon = '<i class="bi bi-check-circle-fill"></i>';
    } else if (message.includes('ผิดพลาด') || message.includes('Failed') || message.includes('Error')) {
        toast.classList.add('error');
        icon = '<i class="bi bi-exclamation-circle-fill"></i>';
    }

    toast.innerHTML = `${icon} <span>${message}</span>`;
    document.body.appendChild(toast);
    
    // Trigger animation
    setTimeout(() => toast.classList.add('show'), 10);
    
    setTimeout(() => {
        toast.classList.remove('show');
        setTimeout(() => toast.remove(), 400);
    }, 3000);
};
